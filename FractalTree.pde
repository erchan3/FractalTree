public void setup() {
    size(700, 600);
    noLoop();
}

public void draw(){
    background(200);
    strokeWeight(3);
    line(width / 2, height - 30, width / 2, height - 130);
    treeBranch(width / 2, height - 130, 80, Math.PI / 2);
}

private void treeBranch(float x, float y, double length, double angle) {
    if (length > 5) {
        double a = angle + Math.PI / (Math.random() * 6 + 6);
        float x1 = x - (float)(length * Math.cos(a));
        float y1 = y - (float)(length * Math.sin(a));
        strokeWeight((float)(length / 60) + 0.5);
        line(x, y, x1, y1);
        treeBranch(x1, y1, length * (Math.random() * 0.3 + 0.6), a);

        a = angle - Math.PI / (Math.random() * 6 + 6);
        x1 = x - (float)(length * Math.cos(a));
        y1 = y - (float)(length * Math.sin(a));
        strokeWeight((float)(length / 60) + 0.5);
        line(x, y, x1, y1);
        treeBranch(x1, y1, length * (Math.random() * 0.3 + 0.6), a);
    }
}

public void mousePressed() {
    redraw();
}
