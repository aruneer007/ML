import re
import extractor
from backend.src.parser_generic import MedicalDocParser


class PatientdetailsParser(MedicalDocParser):
    def __init__(self, text):
        MedicalDocParser.__init__(self,text)

    def parse(self):
        return {
            'patient_name':
            'Phone_number':
            ''

        }
