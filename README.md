# Reserver Install

[![CI][ci-shield]][ci-url]
[![Vercel Deployment Status][vercel-shield]](https://get.reserver.sh/)
![BASH Version][bash-version]

The install script is `install.sh`. It simply downloads the latest version of
`reserver.sh` and makes it executable with `chmod +x reserver.sh`.

`build.sh` is a script that copies `install.sh` to `public/index.html`. That HTML
file is hosted on [get.reserver.sh](https://get.reserver.sh).

Running the following command will get it and execute it:

```sh
curl https://get.reserver.sh | sh
```

## License

Distributed under the MIT License. See [LICENSE](https://github.com/ceiphr/get.reserver.sh/blob/main/LICENSE) for more information.

## Acknowledgments

This script is based on [acmesh-official/get.acme.sh](https://github.com/acmesh-official/get.acme.sh). It's a very nice way to cleanly install scripts!

[vercel-shield]: https://img.shields.io/github/deployments/ceiphr/get.reserver.sh/production?color=green&label=vercel&logo=vercel&logoColor=white
[bash-version]: https://img.shields.io/badge/bash-v4.4%5E-green?&logo=gnubash&logoColor=white
[ci-shield]: https://img.shields.io/github/workflow/status/ceiphr/get.reserver.sh/CI?color=green&logo=github&logoColor=white
[ci-url]: https://github.com/ceiphr/get.reserver.sh/actions/workflows/main.yml