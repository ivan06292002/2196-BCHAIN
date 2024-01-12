import React from 'react';

function ShinyButton(){
    const handleClick = () => {
        alert("You clicked me!");
    }
    return(
        <button onClick={handleClick}>Click This Button!</button>
    );
}

export default ShinyButton;