import peasy.*;

Tree tree;

PeasyCam cam;

float min_dist = 5;
float max_dist = 50;

void setup()
{
  size(600,600, P3D);
  cam = new PeasyCam(this, 500);
  tree = new Tree();
}

void draw()
{
  background(51);
  tree.show();
  tree.grow();
}
