module ApiSchemaAssertions
  def assert_response_schema(schema, response)
    schema_directory = "#{Dir.pwd}/test/support/api/schemas"
    schema_path = "#{schema_directory}/#{schema}.json"
    assert JSON::Validator.validate!(schema_path, response.body, strict: true),
      "Expected response to validate against schema: #{schema}"
  end
end
