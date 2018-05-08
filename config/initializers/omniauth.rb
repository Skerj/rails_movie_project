Rails.application.config.middleware.use OmniAuth::Builder do
	provider :github, '27fce5f36c557b4ac045', 'abf1607e970b63533c85f324c8c1213d5fd45f32'
end