def tuple_from_files():
    try:
        with open("f1.txt") as f1, open("f2.txt") as f2:
            for f1_line in f1:
                f1_line = f1_line.rstrip("\n")
                f2_raw_line = f2.readline().rstrip("\n")
                if f1_line == "":
                    continue
                f2_line = int(f2_raw_line) if f2_raw_line != "" else None
                yield (f1_line, f2_line)
    except IOError as err:
        print(f"Can't open file: {err}")
    except ValueError as err:
        print(f"Only integer can be in f2.txt: {err}")


if __name__ == "__main__":
    for item in tuple_from_files():
        print(item)
