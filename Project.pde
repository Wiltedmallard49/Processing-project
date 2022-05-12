//Initializing objects
Star star;
String[] text = new String[5];
PImage img;

// Sets important aspects
void setup() {
        // Sets the size, framerate, and creates a 3D plane
        size(640, 480, P3D);
        frameRate(5);
        // Loads an image and sets a text string
        img = loadImage("egg.png");
        text[0]="@";
        text[1]="Ω";
        text[2]="∆";
        text[3]="≈";
        text[4]="∞";
        
}

void draw() {
        // Sets the color mode
        colorMode(HSB, 255);

        // Initiates randomized values
        int randA = (int) random(0,4);
        float rand = random(0, 255);
        float randH = random(0, 360);
        float randS = random(0, 360);
        float randB = random(0, 360);
        float randR = random(0, 360);
        float randX = random(0, 640);
        float randY = random(0, 480);

        // Creates a rectange
        stroke(rand, rand, rand);
        rotateZ(randR);
        rotateX(randR);
        rotateY(randR);
        fill(randH, randS, randB);
        rect(rand, rand, randX, randY);

        // Creates a star
        stroke(rand, rand, rand);
        rotateZ(randR);
        rotateX(randR);
        rotateY(randR);
        fill(randB, randS, randH);
        star = new Star(randX, randY, rand, rand, (int) random(0, 10));
        star.display();

        // Displays text
        stroke(rand, rand, rand);
        rotateZ(randR);
        rotateX(randR);
        rotateY(randR);
        fill(randR, randH, randS);
        textSize(128);
        text(text[randA], randX, randX, randR);

        // Creates an ellipse
        stroke(rand, rand, rand);
        rotateZ(randR);
        rotateX(randR);
        rotateY(randR);
        fill(randH, randS, randR);
        ellipse(randX, randY, rand, rand);
        
        // Displays an image
        
        rotateZ(randR);
        rotateX(randR);
        rotateY(randR);
        tint(randR, rand, randR, rand);
        image(img, random(0, 640), random(0.480), height/4, width/4);

        // Changes text display based on user input
        if(keyPressed) {
                if(key == 'n') {
                        // Opens secret website when key is pressed
                        link("https://alt.org/nethack/hterm/");
                        randR = 123;
                        rand = 167;
                } else if(key == '1') {
                        frameRate(5);
                } else if(key == '2') {
                        frameRate(30);
                } else if(key == '3') {
                        frameRate(60);
                }
        }
}
