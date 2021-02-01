import pandas as pd
from paddleocr import PaddleOCR #, draw_ocr

def test_ocr():
    ocr = PaddleOCR(use_angle_cls=True, lang="ch", gpu_mem=4000) # need to run only once to download and load model into memory
    img_path = 'https://schbrain-image-dev.schbrain.com/question-cut-7698c54ae8ad4b758cdc.png'
    # img_path = '/Users/vr/浙大研究院/img/question-cut-7698c54ae8ad4b758cdc.png'
    result = ocr.ocr(img_path, rec=False)
    # req = ''
    for line in result:
        print(line)
    # 显示结果
    # from PIL import Image
    # image = Image.open(img_path).convert('RGB')
    # boxes = [line[0] for line in result]
    # txts = [line[1][0] for line in result]
    # scores = [line[1][1] for line in result]
    # im_show = draw_ocr(image, boxes, txts, scores, font_path='./doc/simfang.ttf')
    # im_show = Image.fromarray(im_show)
    # im_show.save('result.jpg')

test_ocr()
