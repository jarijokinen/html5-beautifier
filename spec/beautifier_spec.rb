require "spec_helper"

html5_hello_world = <<EOF
<!DOCTYPE html>
<html>
  <body>
    <p>Hello World</p>
  </body>
</html>
EOF

describe "Beautifier" do
  it "reformats a string 'Hello World' correctly" do
    "Hello World".beautify.should eq(html5_hello_world)
  end
end
