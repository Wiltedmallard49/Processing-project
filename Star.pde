class Star {
        float x, y, rad1, rad2;
        float angle, halfAngle;

        Star(float x, float y, float rad1, float rad2, int nPoints) {
          this.x = x;
          this.y = y;
          this.rad1 = rad1;
          this.rad2 = rad2;
          angle = TWO_PI / nPoints;
          halfAngle = angle / 2;
        }
        void display() {
                beginShape();
                for(float a = 0; a < TWO_PI; a += angle) {
                        float sx = x + cos(a) * rad2;
                        float sy = y + sin(a) * rad2;
                        vertex(sx, sy);
                        sx = x + cos(a + halfAngle) * rad1;
                        sy = y + sin(a + halfAngle) * rad1;
                        vertex(sx, sy);
                }
                endShape(CLOSE);
        }
}
