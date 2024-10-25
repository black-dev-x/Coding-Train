void setup() {
  size(600,400);
  background(0);
  Table table = loadTable("data.csv", "header");
  
  TableRow row = table.getRow(0);
  float x = row.getInt("x");
  float y = row.getInt("y");
  float w = row.getInt("width");
  float h = row.getInt("height");
  
  rect(x,y,w,h);
}
