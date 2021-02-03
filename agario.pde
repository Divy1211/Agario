Blob blobs[] = new Blob[10];
float MAX_RADIUS = 100;
void setup() {
    size(1000, 1000);
    background(0);
    for(Blob blob : blobs) {
        blob = new Blob(new PVector(random(0, width), random(0, height)),
                        new PVector(random(0, width*0.1), random(0, height*0.1)),
                        random(0, MAX_RADIUS),
                        color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255))));
        print(blob);
    }
}

void draw() {
    background(0);
    for(Blob blob : blobs) {
        blob.display();
        blob.move();
    }
}
