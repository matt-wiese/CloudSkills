import unittest

class TestS3(unittest.TestCase):
    def test_bucket_name_value(self):
        bucket = 'cloudskills-mw-20210228'

        self.assertEqual(bucket, 'cloudskills-mw-20210228')
    
    def test_region_value(self):
        region = 'us-east-1'

        self.assertEqual(region, 'us-east-1')

    def test_bucket_is_string(self):
        bucket = 'cloudskills-mw-20210228'

        self.assertEqual(type(bucket), str)
    
    def test_region_is_string(self):
        region = 'us-east-1'

        self.assertEqual(type(region), str)

if __name__ == '__main__':
    unittest.main()