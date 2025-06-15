import React, { useState } from 'react';
import {
    Nav,
    // NavDropdown
    Collapse,
    ListGroup,
    Image
} from 'react-bootstrap';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {
  faCirclePlus,
} from '@fortawesome/free-solid-svg-icons';

class AppSideBar extends React.Component {
    mainMenu = {
        style: {
            cursor: "pointer",
            marginLeft: "20px"
        }
    };
    subMenu = {
        style: {
            cursor: "pointer" ,
            textAlign: "start",
            marginLeft: "40px"
        }
    };
    handleOnMouseOver = (e) => {
        e.target.classList.add("active");
    };
    state = {
        open: false,
    }
    constructor () {
        super();
    }
    render () {
        return (
            <div>
                <div>Mario</div>
                <Image src="/static/img/Mario.JPG" width="30%" height="30%" style={{paddingTop:"10px",paddingBottom:"10px"}} alt="Profile Picture" roundedCircle />
                <hr />
                <Nav
                    aria-controls="example-collapse-text"
                    aria-expanded={this.state.open}
                >
                    <ListGroup>
                        <ListGroup.Item variant="primary" style={this.mainMenu.style}
                            onMouseOver={this.handleOnMouseOver}
                            onMouseOut={(e) => {
                                if (!this.state.open) {
                                    e.target.classList.remove("active");
                                }
                            }}
                            onClick={() => this.setState({open: !this.state.open})}>
                            Courses
                        </ListGroup.Item>
                    </ListGroup>
                </Nav>
                <Collapse in={this.state.open}>
                    <div id="example-collapse-text">
                        <hr/>
                        <ListGroup>
                            <ListGroup.Item variant="info" action  style={this.subMenu.style}>
                                &nbsp;&nbsp;All
                            </ListGroup.Item>
                            <ListGroup.Item variant="info" action  style={this.subMenu.style}>
                                &nbsp;&nbsp;My Courses
                            </ListGroup.Item>
                            <ListGroup.Item variant="info" action  style={this.subMenu.style}>
                                &nbsp;&nbsp;Drafts
                            </ListGroup.Item>
                            <ListGroup.Item variant="info" action  style={this.subMenu.style}>
                                &nbsp;&nbsp;Certificates
                            </ListGroup.Item>
                            <ListGroup.Item variant="info" action  style={this.subMenu.style}>
                                <span>&nbsp;&nbsp;</span>
                                <FontAwesomeIcon icon={faCirclePlus} />
                                <span>&nbsp;&nbsp;Create</span>
                            </ListGroup.Item>
                        </ListGroup>
                    </div>
                </Collapse>
            </div>
        );
    }
}

export default AppSideBar;