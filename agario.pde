Blob blobs[];
float MAX_RADIUS = 50, MIN_RADIUS = 20;
void setup() {
    size(1000, 1000);
    background(0);
    blobs = new Blob[10];
    for(int i = 0; i < blobs.length; i++) {
        blobs[i] = new Blob(new PVector(random(0, width), random(0, height)),
                        random(MIN_RADIUS, MAX_RADIUS),
                        color(int(random(50, 255)), int(random(50, 255)), int(random(50, 255))));
    }
}
 //<>//
void draw() {
    background(0);
    for(Blob blob : blobs) {
       blob.display();
       blob.move();
    }
}
