run_test()
{
    TEST_NAME="$1"

    echo "Testing ${TEST_NAME} ..."
    test "$(. "${TEST_NAME}/command")" = "$(cat "${TEST_NAME}/output")"
}

find . -mindepth 1 -maxdepth 1 -type d -not -path "./.*" | while read -r FILE; do
    run_test "${FILE}"
done
