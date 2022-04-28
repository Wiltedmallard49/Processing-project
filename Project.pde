Star star;
String text;
PImage img;

void setup() {
        size(640, 480, P3D);
        frameRate(5);
        img = loadImage("egg.png");
        text = "@";
}

void draw() {
        colorMode(HSB, 255);

        int i = round(random(0,1)) * 255;
        float rand = random(0, 255);
        float randR = random(0, 360);
        float randX = random(0, 640);
        float randY = random(0, 480);

        stroke(rand, rand, rand);
        rotateZ(randR);
        rotateX(randR);
        rotateY(randR);
        fill(rand, randR, randR);
        rect(rand, rand, randX, randY);

        stroke(rand, rand, rand);
        rotateZ(randR);
        rotateX(randR);
        rotateY(randR);
        fill(randR, rand, randR);
        star = new Star(randX, randY, rand, rand, (int) random(0, 10));
        star.display();

        stroke(rand, rand, rand);
        rotateZ(randR);
        rotateX(randR);
        rotateY(randR);
        fill(random(0, 360), randR, rand);
        textSize(128);
        text(text, randX, randX, randR);

        stroke(rand, rand, rand);
        rotateZ(randR);
        rotateX(randR);
        rotateY(randR);
        fill(rand, randR, rand);
        ellipse(randX, randY, rand, rand);
        
        rotateZ(randR);
        rotateX(randR);
        rotateY(randR);
        tint(randR, rand, randR, rand);
        image(img, random(0, 640), random(0.480), height/4, width/4);
        if(keyPressed) {
                if(key == 'n') {
                        link("https://alt.org/nethack/hterm/");
                        text = "Secret!";
                        randR = 123;
                        rand = 167;
                }
        }
}
