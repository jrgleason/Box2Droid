package com.gleason.box2d;

public class Native
{
  static 
  {
    System.loadLibrary("box2D");
    System.loadLibrary("box2DHello");
  }

  public static native void main(String[] argv);
}
