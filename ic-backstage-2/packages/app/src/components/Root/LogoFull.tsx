import React from 'react';
import { makeStyles } from '@material-ui/core';

import MyLogoFull from './logo/MicrosoftTeams-image.png';

const LogoFull = () => {
  const classes = useStyles(); // Add this line to use the styles

  return (
    <img
      className={classes.svg} // Change class to className
      src={MyLogoFull}
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
});

export default LogoFull;
