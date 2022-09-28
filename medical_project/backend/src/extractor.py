from pdf2image import convert_from_path
import pytesseract
from backend.src import image_process
pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"


POPPLER_PATH = poppler_path=r'C:\poppler-22.04.0\Library\bin'
def extract(file_path, file_format):
    #extracting text from pdf file
    pages = convert_from_path(file_path, poppler_path=POPPLER_PATH)
    document_text = ''
    for page in pages:
        processed_image = image_process.preprocess_image(page)
        text = pytesseract.image_to_string(processed_image, lang='eng')
        document_text = '\n'+text
    return document_text

    #if file_format == 'prescription':
     #   pass
    #elif file_format == 'patient_details':
     #   pass



