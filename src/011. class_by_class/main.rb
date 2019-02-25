DummyClass = Class.new
puts DummyClass.new.class.name  # DummyClass

OtherDummyClass = Class.new(DummyClass)  # 상속
print OtherDummyClass.ancestors  # [OtherDummyClass, DummyClass, Object, Kernel, BasicObject]