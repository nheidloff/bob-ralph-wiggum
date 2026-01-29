import subprocess
import unittest
import sys

class TestRalphSayer(unittest.TestCase):
    def test_ralph_sayer_output(self):
        expected_quotes = [
            "I'm helping!",
            "Me fail English? That's unpossible!",
            "My cat's breath smells like cat food."
        ]
        
        # Run the script
        process = subprocess.run([sys.executable, 'ralph_sayer.py'], capture_output=True, text=True)
        
        # Check if the script executed successfully
        self.assertEqual(process.returncode, 0)
        
        # Check if the output is one of the expected quotes
        output = process.stdout.strip()
        self.assertIn(output, expected_quotes)

if __name__ == '__main__':
    unittest.main()