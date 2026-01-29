import unittest
import subprocess
import sys

class TestRalphMath(unittest.TestCase):

    def run_ralph_math(self, arg1, arg2):
        command = [sys.executable, 'ralph_math.py', str(arg1), str(arg2)]
        result = subprocess.run(command, capture_output=True, text=True)
        return result.stdout.strip(), result.stderr.strip()

    def test_sum_less_than_or_equal_10(self):
        stdout, stderr = self.run_ralph_math(2, 2)
        self.assertEqual(stderr, "")
        self.assertEqual(stdout, "4 ... I calculate good!")

        stdout, stderr = self.run_ralph_math(5, 5)
        self.assertEqual(stderr, "")
        self.assertEqual(stdout, "10 ... I calculate good!")

    def test_sum_greater_than_10(self):
        stdout, stderr = self.run_ralph_math(5, 6)
        self.assertEqual(stderr, "")
        self.assertEqual(stdout, "That is unpossible!")

        stdout, stderr = self.run_ralph_math(10, 1)
        self.assertEqual(stderr, "")
        self.assertEqual(stdout, "That is unpossible!")

    def test_invalid_input(self):
        stdout, stderr = self.run_ralph_math("a", 2)
        self.assertEqual(stderr, "")
        self.assertEqual(stdout, "My cat's name is Mittens.")

        stdout, stderr = self.run_ralph_math(2, "b")
        self.assertEqual(stderr, "")
        self.assertEqual(stdout, "My cat's name is Mittens.")

    def test_missing_arguments(self):
        command = [sys.executable, 'ralph_math.py', '1']
        result = subprocess.run(command, capture_output=True, text=True)
        self.assertIn("Usage: python3 ralph_math.py <number1> <number2>", result.stdout.strip())
        self.assertEqual(result.stderr.strip(), "")

        command = [sys.executable, 'ralph_math.py']
        result = subprocess.run(command, capture_output=True, text=True)
        self.assertIn("Usage: python3 ralph_math.py <number1> <number2>", result.stdout.strip())
        self.assertEqual(result.stderr.strip(), "")

if __name__ == '__main__':
    unittest.main()
