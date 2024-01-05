import React from 'react';
import classes from './TodoList.module.css';


class TodoList extends React.Component {
    render() {
       
      return (
    <div>
        <h1>TODO LIST</h1>
        <ul>
            <li>Clean Porch</li>
            <li>Wash Car</li>
            <li>Attend BCHAIN Class</li>
            
        </ul>
         
    </div>
      );
    }
  }

  export default TodoList;