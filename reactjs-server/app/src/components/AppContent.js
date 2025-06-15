import React from 'react';
import {
    Row,
    Col,
    Form,
    ListGroup,
    Button
} from 'react-bootstrap';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {
  faWandSparkles,
  faBriefcase,
  faUserTie,
  faBullhorn,
  faGear,
  faArrowRight
} from '@fortawesome/free-solid-svg-icons';

class AppContent extends React.Component {
    iconStyle = {
        cursor:"pointer",
        width:"80px",
        // borderRadiu:"40px"
    };
    handleOnMouseOver = (e) => {
        e.target.classList.add("active");
    };
    handleOnMouseOut = (e) => {
        e.target.classList.remove("active");
    };
    constructor () {
        super();
    }
    render () {
        return (
            <div>
                <Form className="d-flex flex-column justify-content-center">
                    <h6>What course will you box?</h6>
                    <div class="d-flex justify-content-center">
                        <Form.Control type="text" name="searchCourse"
                            placeholder="&#128269; Search your courses or templates"
                            className={["w-75"]} />
                    </div>
                    <div class="d-flex justify-content-center">
                        <ListGroup key="sm" horizontal="sm" className="my-2">
                            <ListGroup.Item variant="light" 
                                style={this.iconStyle}
                                onMouseOver={this.handleOnMouseOver}
                                onMouseOut={this.handleOnMouseOut}>
                                <FontAwesomeIcon icon={faWandSparkles} />
                                <br/>
                                <span style={{fontSize:8}}>AI</span>
                            </ListGroup.Item>
                            <ListGroup.Item variant="light" 
                                style={this.iconStyle}
                                onMouseOver={this.handleOnMouseOver}
                                onMouseOut={this.handleOnMouseOut}>
                                <FontAwesomeIcon icon={faBriefcase} />
                                <br/>
                                <span style={{fontSize:8}}>Business</span>
                            </ListGroup.Item>
                            <ListGroup.Item variant="light" 
                                style={this.iconStyle}
                                onMouseOver={this.handleOnMouseOver}
                                onMouseOut={this.handleOnMouseOut}>
                                <FontAwesomeIcon icon={faUserTie} />
                                <br/>
                                <span style={{fontSize:8}}>HR</span>
                            </ListGroup.Item>
                            <ListGroup.Item variant="light" 
                                style={this.iconStyle}
                                onMouseOver={this.handleOnMouseOver}
                                onMouseOut={this.handleOnMouseOut}>
                                <FontAwesomeIcon icon={faBullhorn} />
                                <br/>
                                <span style={{fontSize:8}}>Martketing</span>
                            </ListGroup.Item>
                        </ListGroup>
                    </div>
                    <div class="d-flex justify-content-center">
                        <Form.Select className={["w-75"]}
                                aria-label="Default select example">
                            <option>Open this select menu</option>
                            <option value="1">English United States</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </Form.Select>
                    </div>
                    <div class="d-flex justify-content-center">
                        <div key="default-radio-1" className="m-2">
                            <Form.Check type="radio" id="radio-1" label="Step 1" />
                        </div>
                        <div key="default-radio-2" className="m-2">
                            <Form.Check type="radio" id="radio-2" label="Step 2" />
                        </div>
                        <div key="default-radio-3" className="m-2">
                            <Form.Check type="radio" id="radio-3" label="Step 3" />
                        </div>
                    </div>
                    <div class="d-flex justify-content-center pb-2">
                        <Row className="w-75">
                            <Col sm={9} className="d-flex justify-content-start p-0">
                                Describe your course
                            </Col>
                            <Col sm={3} className="d-flex justify-content-end p-0">
                                <FontAwesomeIcon icon={faGear} />
                            </Col>
                        </Row>
                    </div>
                    <div class="d-flex justify-content-center pb-2">
                        <Form.Control type="text" name="AI-Bot"
                            placeholder="AI Bot"
                            className={["w-75"]} />
                    </div>
                    <div class="d-flex justify-content-center">
                        <div className="d-flex justify-content-start w-75">
                            <Col sm={9} className="d-flex justify-content-start p-0">
                                <Button style={{width:120,backgroundColor:"#c98acc"}}>
                                    <span>Next&nbsp;&nbsp;</span>
                                    <FontAwesomeIcon icon={faArrowRight} />
                                </Button>
                            </Col>
                            <Col sm={3} className="d-flex justify-content-end p-0">
                                <a href="" style={{color:"#c98acc"}}
                                    className={["d-flex align-items-center"]}>
                                    <span>Skip&nbsp;&gt;</span>
                                </a>
                            </Col>
                        </div>
                    </div>
                </Form>
            </div>
        );
    }
}

export default AppContent;