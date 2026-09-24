# Every post must declare `mode: signal` or `mode: static` for the /entries filters.
# GitHub Pages runs in safe mode and skips this; it guards local builds.
Jekyll::Hooks.register :site, :post_read do |site|
  site.posts.docs.each do |post|
    mode = post.data["mode"]
    next if %w[signal static].include?(mode)

    raise Jekyll::Errors::FatalException,
          "#{post.relative_path}: front matter needs `mode: signal` or `mode: static` (got #{mode.inspect})"
  end
end
