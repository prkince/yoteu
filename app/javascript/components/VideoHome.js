import React from "react"
import PropTypes from "prop-types"

class VideoHome extends React.Component {
  render () {
    return (
      <React.Fragment>
		<div className="video-react">
			<video controls preload="true" autoPlay loop muted>
				<source src="https://res.cloudinary.com/dovu27lye/video/upload/v1582197557/bobato/video-edou_xvpo6x.mp4" type="video/mp4" /> 
			</video>
		</div>
      </React.Fragment>
    );
  }
}

VideoHome.propTypes = {
  video: PropTypes.string
};
export default VideoHome


