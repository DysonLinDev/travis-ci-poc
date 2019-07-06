curl -X POST \
--data-urlencode 'payload={"text":"'" $TRAVIS_TEST_RESULT "'"}' \
{webhook url}