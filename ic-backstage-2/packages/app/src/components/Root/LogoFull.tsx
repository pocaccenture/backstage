import React from 'react';
import { makeStyles } from '@material-ui/core';

const LogoFull = () => {
  const classes = useStyles(); // Add this line to use the styles

  return (
    <img
      className={classes.svg} // Change class to className
      src="https://s3-nao-apagar-de-jeito-nenhum.s3.amazonaws.com/TEF_BIG.D-febe3646.png"
      alt="LogoFull"
    />
  );
}

const useStyles = makeStyles({
  svg: {
    maxWidth: '350%', // Change to percentage or pixel value
    height: 'auto', // Set to auto for responsive resizing
    maxHeight: 300, // Set the maximum height to 300 pixels
  },
  path: {
    fill: 'pink',
    stroke: 'pink'
  },
});

export default LogoFull;

