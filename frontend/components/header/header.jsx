import React from 'react';

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    this.props.logout();
  }

  render() {
    const { currentUser } = this.props;

    if (currentUser) {
      return (
        <div>
          <h3>Kyle Fitness Pal</h3>
          <h3>Hi, {currentUser.username}</h3>
          <button onClick={this.handleClick}>Log Out</button>
        </div>
      );
    } else {
      return (
        <div>
          <h3>Kyle Fitness Pal</h3>
          <h3>Create Account</h3>
        </div>
      );
    }
  }
}

export default Header;