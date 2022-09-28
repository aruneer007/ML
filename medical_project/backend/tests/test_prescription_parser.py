from backend.src.parser_prescription2 import PrescriptionParser
from backend.src import extractor
import pytest

@pytest.fixture()
def doc_maria():
    document_text = extractor.extract('../resources/prescription/pre_1.pdf', 'prescription')
    return PrescriptionParser(document_text)

@pytest.fixture()
def doc_virat():
    document_text = extractor.extract('../resources/prescription/pre_2.pdf', 'prescription')
    return PrescriptionParser(document_text)
@pytest.fixture()
def doc_empty():
    document_text = ''
    return PrescriptionParser('')

def test_get_name(doc_maria, doc_virat, doc_empty):
    assert doc_maria.get_field('patient_name') == 'Marta Sharapova'
    assert doc_virat.get_field('patient_name') == 'Virat Kohli'
    assert doc_empty.get_field('patient_name') == None

def test_get_address(doc_maria,doc_virat, doc_empty):
    assert doc_maria.get_field('patient_address') == '9 tennis court, new Russia, DC'
    assert doc_virat.get_field('patient_address') == '2 cricket blvd, New Delhi'
    assert doc_empty.get_field('patient_address') == None

#def test_get_medicines(doc_maria):
 #   assert doc_maria.get_field('medicines') == ''


def test_parse(doc_maria,doc_virat):
    record_maria = doc_maria.parse()
    assert record_maria == {'patient_name': 'Marta Sharapova', 'patient_address': '9 tennis court, new Russia, DC', 'medicines': 'K\n\nPrednisone 20 mg\nLialda 2.4 gram', 'directions': 'Prednisone, Taper 5 mg every 3 days,\nFinish in 2.5 weeks a\n\nLialda - take 2 pill everyday for 1 month'}
    record_virat = doc_virat.parse()
    assert record_virat == {'patient_name': 'Virat Kohli', 'patient_address': '2 cricket blvd, New Delhi', 'medicines': '| Omeprazole 40 meg', 'directions': 'Use two tablets daily for three months'}



