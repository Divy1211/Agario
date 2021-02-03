class Blob {
    PVector position;
    PVector velocity;
    float radius;
    color colour;
    Blob(PVector position, PVector velocity, float radius, color colour) {
        this.position = position;
        this.velocity = velocity;
        this.radius = radius;
        this.colour = colour;
    }
    void display() {
        noStroke();
        fill(colour);
        circle(position.x, position.y, radius);
    }
    void move() {
        position.add(velocity);
        if(position.x > width || position.x < 0)
            velocity.x = -velocity.x;
        if(position.y > height || position.y < 0)
            velocity.y = -velocity.y;
    }
    boolean compareSize(Blob blob, float threshold) {
        if(abs(1 - blob.radius/radius) >= 0.1)
            return true;
        return false;
    }
    //void eat(Blob blob) {

    //}
    //void divide() {

    //}
}
