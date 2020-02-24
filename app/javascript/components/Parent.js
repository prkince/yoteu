import React from 'react'
import PropTypes from "prop-types"

class Parent extends React.Component {

  constructor(props) {
    super(props);
    this.state = { name: 'Prk' };
    this.changeName = this.changeName.bind(this)
  }
  changeName(newName) {
    this.setState({
      name: newName
    });
  }
  render () {
    return (
      <React.Fragment>
        <Child name={this.state.name} onChange={this.changeName}/>
      </React.Fragment>
    );
  }
}

Parent.propTypes = {
  video: PropTypes.string
};

export default Parent


class Child extends React.Component {
  constructor(props) {
    super(props);
    this.handleChange = this.handleChange.bind(this)
  }
  handleChange(e) {
    const name = e.target.value;
    this.props.onChange(name);
  }
  render() {
    return (
      <div>
        <h1>
          Hey my name is {this.props.name}!
        </h1>
        <select id="great-names" onChange={this.handleChange}>
          <option value="Prk">
            Prk
          </option>

          <option value="Paulo">
            Paulo
          </option>

          <option value="Suna">
            Suna
          </option>
        </select>
      </div>
    );
  }
}