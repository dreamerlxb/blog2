# 指定 I18n 库搜索翻译文件的路径
I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}')]

# 修改默认区域设置（默认是 :en）
I18n.default_locale = 'zh-CN'