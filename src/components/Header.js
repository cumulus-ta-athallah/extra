import React, { Component } from "react";

class Header extends Component {
  render() {
    return (
      <div className="text-center">
        <img
          src="https://upload.wikimedia.org/wikipedia/id/thumb/c/c3/Makara_of_Fasilkom_UI.svg/1024px-Makara_of_Fasilkom_UI.svg.png"
          width="300"
          className="img-thumbnail"
          style={{ marginTop: "20px" }}
          alt="Logo"
        />
        <hr />
        <h5>
          <i>presents</i>
        </h5>
        <h1>App with React + Django</h1>
      </div>
    );
  }
}

export default Header;
