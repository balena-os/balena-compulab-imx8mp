# Size imx-boot pads each DDR training firmware blob to after the SPL. The SPL
# finds them with the same sizes (20004), and both recipes check them.
IMX_DDR_FW_IMEM_LEN = "0x8000"
IMX_DDR_FW_DMEM_LEN = "0x800"
