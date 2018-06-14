//
// Display stars below a business name.
//
//var Stars = React.createClass({
class Stars extends React.Component {

  constructor(props) {
   super(props);
    this.state = {
      num: this.props.num
    };
  }

  render() {

    var stars = parseFloat(this.state.num);
    var num = Math.floor(stars);
    var halfNeeded = (stars - num == 0.5);
    var dummy = Array();
    for (var i=1; i<=5; i++) {
      if (i <= num)
        dummy.push("starOn");
      else if (i == num + 1 && halfNeeded)
        dummy.push("starHalf");
      else
        dummy.push("starOff");
    }
    var star = '\u2736'; // '\ufe61'; // '\u2b50'; // '\u2606';
    return (
      <div className='stars_div'>
        <input type="hidden" name="rating" value={this.state.num} />
        {
          dummy.map(function(key, i) {
              return ( <span key={i} onClick={function() {this.setNum(i + 1)}.bind(this)} className={key}>{star}</span> );
           }.bind(this))
        }
      </div>
    );
  }

  setNum(i) {
    this.setState({num:i})
  }

}

class FormField extends React.Component {
  render() {
    var star = this.props.required == "1" ? "*" : "";

    return (
         <div className="form-field">
            <label className="form-field-label" htmlFor={this.props.name}>{this.props.name}</label>
            <div className="red">{star}</div>
            <div className="form-field-control">
              {this.props.input}
            </div>
        </div>
    )
  }
}

class FormFieldTextarea extends React.Component {
  render() {
    var input = ( <textarea type="text" name={this.props.fieldName}></textarea>  );
    return (
      <FormField name={this.props.name} input={input} required={this.props.required}/>
    )
  }
}

class FormFieldInput extends React.Component {
  constructor(props, context) {
    super(props, context);

    this.state = {
      data: this.props.data
    };
  }

  componentWillReceiveProps (nextProps) {
    this.setState({data: nextProps.data});
    this.updateFormElements(nextProps.data);
    //setTimeout(function() {this.componentDidMount()}.bind(this), 0);
  }

  componentDidMount() {
    // Need to wait until it's really mounted.
    if (this.props.data != null)
     setTimeout(function() {this.updateFormElements(this.props.data)}.bind(this), 0);
  }

  updateFormElements(row) {
    if (row != null)
    Object.keys(row).forEach(function(k,i) {
      $("input[name=" + k).val(row[k]);
      $("textarea[name=" + k).val(row[k]);
    });
  }

  render() {
    var input = ( <input type="text" name={this.props.fieldName} /> );
    return (
      <FormField name={this.props.name} input={input} required={this.props.required}/>
    )
  }
}

class FormFieldCookie extends React.Component {
  saveToCookie() {
    createCookie(this.props.fieldName, $("#" + this.props.fieldName).val());
  }

  render() {
    var cookieVal = readCookie(this.props.fieldName) || '';
    var input = ( <input type="text" onBlur={this.saveToCookie.bind(this)}
      name={this.props.fieldName} id={this.props.fieldName} defaultValue={cookieVal} /> );
    return (
      <FormField name={this.props.name} fieldName={this.props.fieldName} input={input} required={this.props.required}/>
    )
  }
}

class EditFieldsRequired extends React.Component {
  render() {
    var rating = 3;
    if (this.props.data && this.props.data['stars'])
      rating = this.props.data['stars'];
    return (
      <div>
        <div className="form-fields">
            <FormFieldCookie name="Restaurant" fieldName="business_name" required="1" data={this.props.data}/>
            <FormFieldInput name="Dish" fieldName="dish" required="1" data={this.props.data}/>
            <FormFieldCookie name="Email" fieldName="email" required="1" data={this.props.data} />
        </div>
         <Stars num={rating}/>
      </div>
     )
  }
}

class EditFieldsOptional extends React.Component {
  render() {
    return (
      <div>
        <div className="form-fields">
            <FormFieldInput name="Menu Item" fieldName="menu_item"/>
            <FormFieldTextarea name="Description" fieldName="description"/>
            <FormFieldTextarea name="Comments" fieldName="comments"/>
        </div>
      </div>
     )
  }
}

class App extends React.Component {
  render() {
    return (
    <div>
    <div id="upload_form">
    <form action="upload.php" method="post" encType="multipart/form-data">
        <h1><a href="index.html">Dishes</a></h1>

        <label className="cameraButton">Get a picture
          <input type="file" name="uploaded_file" id="uploaded_file" accept="image/*" />
	    </label>

        <EditFieldsRequired />


        <button type="submit" className="submit" value="Submit">Upload</button>
    </form>
    </div>

    <UploadedPhotos />

    </div>
    )
  }
}

class UploadedPhotos extends React.Component {

  constructor(props, context) {
    super(props, context);

    this.state = {
      dishes: []
    };
  }

  componentDidMount() {
     var email = readCookie("email");
     if (email == null)
       return;


     $.ajax({
      url: "get.php",
      data: {'proc':"my_dishes", 'email': email},
      dataType: 'text',
      cache: false,
      success: function(dataStr) {
        var data = JSON.parse(dataStr);
        this.setState({dishes: data});
      }.bind(this),
      error: function(xhr, status, err) {
        console.error(status, err.toString());
      }
    });
  }

  render() {
    var dishes = this.state.dishes.map(function(row,i) {
      return (
        <div key={i}>{row.name}</div>
      )
    })

    return (
      <div>{dishes}</div>
    )
  }
}

function renderUpload() {
  var domContainerNode = window.document.getElementById('root');
  ReactDOM.unmountComponentAtNode(domContainerNode);
  ReactDOM.render(<App />, domContainerNode);
}
