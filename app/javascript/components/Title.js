import React from 'react';
import PropTypes from "prop-types";

class Title extends React.Component{
	constructor(props){
		super(props);
		this.state = { name: 'PRK'}
	}
	changeName(){
		this.setState({name })
	}
	render(){
		return(
			<h2 className="cd-headline clip is-full-width" name={this.state.name} onChange={this.changeName}>
          		Hello {this.state.name}
          	</h2>
        )
	}
}

export default Title
