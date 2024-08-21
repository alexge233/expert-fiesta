import torch
assert torch.cuda.is_available() is True
assert torch.cuda.device_count() > 1
print(torch.cuda.get_device_name(0))
print(t.backends.cudnn.enabled)
