import extractor

if __name__ == '__main__':
    data = extractor.extract('../resources/prescription/pre_2.pdf', 'prescription')
    print(data)