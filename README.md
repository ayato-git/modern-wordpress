# modern-wordpress

- [The 12 factor app](https://12factor.net/ja/) に準拠する為に、[Bedrock](https://roots.io/bedrock/)を使用します
  - BedrockとComposerを使ってWordPressのコアファイルを用意することで、PHPによる標準的なWebアプリケーション開発の作法に従います
  - 将来的に[Acorn](https://roots.io/acorn/)を使ったLaravelとWordPressの統合を目指します
- ローカル開発/ステージング/本番環境にDockerを使います
  - Dockerコンテナの作成には[Nixpacks](https://nixpacks.com/)を使うことで、高い冪等性とカンタンな使い方を目指します
    - [@wordpress/env](https://developer.wordpress.org/block-editor/reference-guides/packages/packages-env/)や[@automattic/vip](https://docs.wpvip.com/how-tos/local-development/use-the-vip-local-development-environment/)の様な、DockerコマンドをJavaScriptでラップする様な道具は使いません
  - [fly.io](https://fly.io)/[Railway](https://railway.app)/[Kinsta PaaS](https://kinsta.com/jp/application-hosting/)の様な、Nixpacksを使えるPaaSへのデプロイを想定します
    - VPSやAmazon EC2の様な、サーバーの全てを自分で管理する環境は想定しません
    - その場合には[Trellis](https://roots.io/trellis/)を使った方が良いでしょう
  - ローカル開発環境でのコンテナ間の連携はdocker composeを使用します
- WordPress Themeの開発に[Timber v2](https://timber.github.io/docs/v2)もしくは[Sage](https://roots.io/sage/)を使用します
  - Timber v2は開発中ですが、Release Candidate版が登場したので、正式リリースが近いです
  - Timber v1は非常に長い歴史を持ちますが、それ故に古い仕組みに囚われています
  - SageはAcornによりLaravelと近い開発体験が得られます

---

<p align="center">
  <a href="https://roots.io/bedrock/">
    <img alt="Bedrock" src="https://cdn.roots.io/app/uploads/logo-bedrock.svg" height="100">
  </a>
</p>


> ## Overview
> 
> Bedrock is a WordPress boilerplate for developers that want to manage their projects with Git and Composer. Much of the philosophy behind Bedrock is inspired by the [Twelve-Factor App](http://12factor.net/) methodology, including the [WordPress specific version](https://roots.io/twelve-factor-wordpress/).
> 
> - Better folder structure
> - Dependency management with [Composer](https://getcomposer.org)
> - Easy WordPress configuration with environment specific files
> - Environment variables with [Dotenv](https://github.com/vlucas/phpdotenv)
> - Autoloader for mu-plugins (use regular plugins as mu-plugins)
> - Enhanced security (separated web root and secure passwords with [wp-password-bcrypt](https://github.com/roots/wp-password-bcrypt))
> 
> ## Getting Started
> 
> See the [Bedrock installation documentation](https://roots.io/bedrock/docs/installation/).
