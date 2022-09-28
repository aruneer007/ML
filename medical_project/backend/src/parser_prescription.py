import re
import extractor

from backend.src.parser_generic import MedicalDocParser

class PrescriptionParser(MedicalDocParser):
    def __init__(self, text):
        MedicalDocParser.__init__(self, text)

    def parse(self):
        return {
            'patient_name': self.get_name(),
            'patient_address': self.get_address(),
            'medicines': self.get_medicine(),
            'directions': self.get_directions()
        }

    def get_name(self):
        pattern = "Name:(.*)Date:"
        matches = re.findall(pattern, self.text)
        if len(matches) > 0:
            return matches[0].strip()

    def get_address(self):
        pattern = "Address:(.*)\n"
        matches = re.findall(pattern, self.text)
        if len(matches) > 0:
            return matches[0].strip()

    def get_medicine(self):
        pattern = "Address:[^\n]*(.*)Directions:"
        matches = re.findall(pattern, self.text, flags=re.DOTALL)
        if len(matches) > 0:
            return matches[0].strip()

    def get_directions(self):
        pattern = "Directions:(.*)Refill:"
        matches = re.findall(pattern, self.text, flags=re.DOTALL)
        if len(matches) > 0:
            return matches[0].strip()

if __name__ == '__main__':
    document_text = extractor.extract('../resources/patient_details/pd_1.pdf', 'prescription')

    pp = PrescriptionParser(document_text)
    print(pp.parse())