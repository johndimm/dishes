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
    var input = ( <textarea type="text" name={this.props.name}></textarea>  );
    return (
      <FormField name={this.props.name} input={input} required={this.props.required}/>
    )
  }
}

class FormFieldInput extends React.Component {
  render() {
    var input = ( <input type="text" name={this.props.name} /> );
    return (
      <FormField name={this.props.name} input={input} required={this.props.required}/>
    )
  }
}

class FormFieldCookie extends React.Component {
  saveToCookie() {
    createCookie(this.props.name, $("#" + this.props.name).val());
  }

  render() {
    var email = readCookie(this.props.name);
    var input = ( <input type="text" onBlur={this.saveToCookie.bind(this)}
      name={this.props.name} id={this.props.name} defaultValue={email} /> );
    return (
      <FormField name={this.props.name} input={input} required={this.props.required}/>
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

        <Stars num="3"/>
        <div className="form-fields">
            <FormFieldCookie name="Restaurant" required="1" />
            <FormFieldInput name="Dish" required="1"/>
            <FormFieldCookie name="email" required="1" />
        </div>

        <label className="cameraButton">Get a picture
          <input type="file" name="uploaded_file" id="uploaded_file" accept="image/*" />
	</label>

        <div className="form-fields">
            <FormFieldInput name="Menu Item" />
            <FormFieldTextarea name="Description" />
            <FormFieldTextarea name="Comments" />
        </div>
        <input type="submit" className="submit" value="Upload!" />
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

function renderRoot() {
  var domContainerNode = window.document.getElementById('root');
  ReactDOM.unmountComponentAtNode(domContainerNode);
  ReactDOM.render(<App />, domContainerNode);
}

$(document).ready (function() {
  renderRoot();
});

// Attach this function to the window object so it can be called
// from href="javascript:window.renderRoot..."
// Needed when using <script type="text/babel"...
window.renderRoot = renderRoot;
