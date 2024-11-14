# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  autoVolumeSrc = {
    pname = "autoVolumeSrc";
    version = "d7f7962724b567a8409ef2898602f2c57abddf5a";
    src = fetchgit {
      url = "https://github.com/amanharwara/spicetify-autoVolume";
      rev = "d7f7962724b567a8409ef2898602f2c57abddf5a";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-WquDmeaj+7M8DzGuHYOJgF6ifcs3vj3gIciZMaRQ3t4=";
    };
    date = "2020-02-16";
  };
  bloomSrc = {
    pname = "bloomSrc";
    version = "809c042ca8f88540604fbd6aca35f42bddfcaf27";
    src = fetchgit {
      url = "https://github.com/nimsandu/spicetify-bloom";
      rev = "809c042ca8f88540604fbd6aca35f42bddfcaf27";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-dyCCpTiLAqObeHEfmwT89J52NB3M2L17/E5klIXMTec=";
    };
    date = "2024-09-09";
  };
  catppuccinSrc = {
    pname = "catppuccinSrc";
    version = "4294a61f54a044768c6e9db20e83c5b74da71091";
    src = fetchgit {
      url = "https://github.com/catppuccin/spicetify";
      rev = "4294a61f54a044768c6e9db20e83c5b74da71091";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-OHsauoCjj99aoIbq78xQf1ehYtLpIcUde5DmZSJFCXI=";
    };
    date = "2024-05-20";
  };
  charlieS1103Src = {
    pname = "charlieS1103Src";
    version = "ab8fe9ccabc86477bc55a561fc532a0fa416d58c";
    src = fetchgit {
      url = "https://github.com/CharlieS1103/spicetify-extensions";
      rev = "ab8fe9ccabc86477bc55a561fc532a0fa416d58c";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-14Q1hHowE0w9ynpjlM6rM079Hqu1WVy3dzarwCZSXHE=";
    };
    date = "2024-05-13";
  };
  comfySrc = {
    pname = "comfySrc";
    version = "db9a174bfe30cd39370ae6a31d854e119617b4aa";
    src = fetchgit {
      url = "https://github.com/Comfy-Themes/Spicetify";
      rev = "db9a174bfe30cd39370ae6a31d854e119617b4aa";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-cJR9Q9aO1DKrqVjL2eAe1HHI5deCV1/Yd+AN5x0vUtk=";
    };
    date = "2024-10-30";
  };
  customAppsExtensionsSrc = {
    pname = "customAppsExtensionsSrc";
    version = "bb12c53dc11413e980ce3e40fbcec6f23b752003";
    src = fetchgit {
      url = "https://github.com/3raxton/spicetify-custom-apps-and-extensions";
      rev = "bb12c53dc11413e980ce3e40fbcec6f23b752003";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-7kVG5rAGKr8FTtXG7h0V2dBd8MBG5ntBwOjANN2Oheg=";
    };
    date = "2024-11-07";
  };
  dakshExtensions = {
    pname = "dakshExtensions";
    version = "4f481c052d5cf2b568c052a7f8caed9bfe5f7483";
    src = fetchgit {
      url = "https://github.com/daksh2k/Spicetify-stuff";
      rev = "4f481c052d5cf2b568c052a7f8caed9bfe5f7483";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-IFsmIsWLuczqr/TYMTZtEbE3wR+kprusLnfQrweBorg=";
    };
    date = "2024-10-19";
  };
  defaultDynamicSrc = {
    pname = "defaultDynamicSrc";
    version = "457a5fb4f3c5a6ec9e8a4b02014721c703ad7348";
    src = fetchgit {
      url = "https://github.com/JulienMaille/spicetify-dynamic-theme";
      rev = "457a5fb4f3c5a6ec9e8a4b02014721c703ad7348";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-/w5KGud8VXIYEVzUfWkHXbbAwgm1oJeNh6rxEp5o2fI=";
    };
    date = "2024-11-12";
  };
  draculaSrc = {
    pname = "draculaSrc";
    version = "97bf149e7afbe408509862591a57f1d8e2dfc5d7";
    src = fetchgit {
      url = "https://github.com/Darkempire78/Dracula-Spicetify";
      rev = "97bf149e7afbe408509862591a57f1d8e2dfc5d7";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-IS0A/5zTZou9yQJ0zpqAwiW2COt/TGoscN99WGFR9FA=";
    };
    date = "2022-02-14";
  };
  fluentSrc = {
    pname = "fluentSrc";
    version = "64b946af1ee4a5ed761d2f065c45b710e06bc123";
    src = fetchgit {
      url = "https://github.com/williamckha/spicetify-fluent";
      rev = "64b946af1ee4a5ed761d2f065c45b710e06bc123";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-M6kczYmo0/+yL6iuMgkXECIQLOXDIR1aY8htS4KWjCE=";
    };
    date = "2024-05-02";
  };
  groupSessionSrc = {
    pname = "groupSessionSrc";
    version = "e6a2ce35589b9404e539c5778fa1c2efa53eefe6";
    src = fetchgit {
      url = "https://github.com/timll/spotify-group-session";
      rev = "e6a2ce35589b9404e539c5778fa1c2efa53eefe6";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-+DMtll5VGFkQIeeH+WklPow0iRzz0Sv1I/N8Gt4vzyQ=";
    };
    date = "2024-10-12";
  };
  hidePodcastsSrc = {
    pname = "hidePodcastsSrc";
    version = "afce18ad464a26c597ccf364898c1e89659471f2";
    src = fetchgit {
      url = "https://github.com/theRealPadster/spicetify-hide-podcasts";
      rev = "afce18ad464a26c597ccf364898c1e89659471f2";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-sEm59ar/Tw2/MahEZbZu1Hr1dZEARcqFR/VIf66NcQY=";
    };
    date = "2024-11-01";
  };
  historySrc = {
    pname = "historySrc";
    version = "577e34f364127f18d917d2fe2e8c8f2a1af9f6ae";
    src = fetchgit {
      url = "https://github.com/einzigartigerName/spicetify-history";
      rev = "577e34f364127f18d917d2fe2e8c8f2a1af9f6ae";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-ORG1oNvMTJxrI3spfAuN+pCKTKvQfhqUIYT9NM1yZTs=";
    };
    date = "2021-05-20";
  };
  huhExtensionsSrc = {
    pname = "huhExtensionsSrc";
    version = "d58201e27716df86ace457a82dce980175c2d65d";
    src = fetchgit {
      url = "https://github.com/huhridge/huh-spicetify-extensions";
      rev = "d58201e27716df86ace457a82dce980175c2d65d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-ZJJC7mGsM6H8rEfX82CF0kkv/2MYHehN+nS7FktV/t4=";
    };
    date = "2024-10-31";
  };
  lastfmSrc = {
    pname = "lastfmSrc";
    version = "d2f1d3c1e286d789ddfa002f162405782d822c55";
    src = fetchgit {
      url = "https://github.com/LucasBares/spicetify-last-fm";
      rev = "d2f1d3c1e286d789ddfa002f162405782d822c55";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-/C4Y3zuSAEwhMXCRG2/4b5oWfGz/ij6wu0B+CpuJKXs=";
    };
    date = "2022-11-20";
  };
  localFilesSrc = {
    pname = "localFilesSrc";
    version = "1bfd2fc80385b21ed6dd207b00a371065e53042e";
    src = fetchgit {
      url = "https://github.com/hroland/spicetify-show-local-files";
      rev = "1bfd2fc80385b21ed6dd207b00a371065e53042e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-neKR2WaZ1K10dZZ0nAKJJEHNS56o8vCpYpi+ZJYJ/gU=";
    };
    date = "2022-04-12";
  };
  marketplaceSrc = {
    pname = "marketplaceSrc";
    version = "06392664c3b0d05bce677f80971cfc8a4c7c1ebe";
    src = fetchgit {
      url = "https://github.com/spicetify/spicetify-marketplace";
      rev = "06392664c3b0d05bce677f80971cfc8a4c7c1ebe";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-h4PjB/FqO8GOJQfG4VeHEnnOKmntoaEKxG5lw0JFG4k=";
    };
    date = "2024-11-01";
  };
  nameThatTuneSrc = {
    pname = "nameThatTuneSrc";
    version = "2f56755a820a9d06c8f85a0b38fcaa5f3ae9e7e5";
    src = fetchgit {
      url = "https://github.com/theRealPadster/name-that-tune";
      rev = "2f56755a820a9d06c8f85a0b38fcaa5f3ae9e7e5";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-zBGEpUmVyNABoelX06CbmUn1Zmkp4reehjN/++DSS3Y=";
    };
    date = "2024-11-01";
  };
  nordSrc = {
    pname = "nordSrc";
    version = "caab9e0afaa6d228b4d73ae6c4c40dd56d3888c7";
    src = fetchgit {
      url = "https://github.com/Tetrax-10/Nord-Spotify";
      rev = "caab9e0afaa6d228b4d73ae6c4c40dd56d3888c7";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-HlywN6a6nQ9Z1Rsg3crkFQuY+npXaN4Qo9cjPLfeqmw=";
    };
    date = "2023-06-06";
  };
  officialSrc = {
    pname = "officialSrc";
    version = "e3ec2ecc61e04f248ca185141eb7977ce3c44adb";
    src = fetchgit {
      url = "https://github.com/spicetify/spicetify-cli";
      rev = "e3ec2ecc61e04f248ca185141eb7977ce3c44adb";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-zSnqdqoD2pOZDYITi59RtiMOyj3ALqtVC0GAvYNV+7s=";
    };
    date = "2024-11-13";
  };
  officialThemes = {
    pname = "officialThemes";
    version = "c6e82dfeaa46ee9060d0c02fc437989eb77f6c61";
    src = fetchgit {
      url = "https://github.com/spicetify/spicetify-themes";
      rev = "c6e82dfeaa46ee9060d0c02fc437989eb77f6c61";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-kpHIWHuubTEwIoi+645Ai/PqXTlZMhRcBueYwgCqG2E=";
    };
    date = "2024-11-07";
  };
  omniSrc = {
    pname = "omniSrc";
    version = "253ae45d2cac2dc3d92a43193ea8f6d9e7e1d3aa";
    src = fetchgit {
      url = "https://github.com/getomni/spicetify";
      rev = "253ae45d2cac2dc3d92a43193ea8f6d9e7e1d3aa";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-5II+4096fOcCA7J4XZfIHSse+3/YJ+EY5KW3GXl+dn8=";
    };
    date = "2023-01-20";
  };
  orchisSrc = {
    pname = "orchisSrc";
    version = "5bf3fcf0696514dcf3e95f4ae3fd00261ccc5dcc";
    src = fetchgit {
      url = "https://github.com/canbeardig/Spicetify-Orchis-Colours-v2";
      rev = "5bf3fcf0696514dcf3e95f4ae3fd00261ccc5dcc";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-9cU2Wlg5W57JpBfzIOXvpRYI8Q3CsH+UsdjQseTr9bs=";
    };
    date = "2022-05-20";
  };
  playlistIconsSrc = {
    pname = "playlistIconsSrc";
    version = "7a4bcbf1fc6b37ac37e16cacb9c9bcd0fe99636e";
    src = fetchgit {
      url = "https://github.com/jeroentvb/spicetify-playlist-icons";
      rev = "7a4bcbf1fc6b37ac37e16cacb9c9bcd0fe99636e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-N0MNpfoBLkH+8/UgYD1R7yIn1hpZ+tpm1hGp+VtASsU=";
    };
    date = "2024-04-17";
  };
  powerBarSrc = {
    pname = "powerBarSrc";
    version = "021ffb8839a6ef5959f306693288f2b96bd3b992";
    src = fetchgit {
      url = "https://github.com/jeroentvb/spicetify-power-bar";
      rev = "021ffb8839a6ef5959f306693288f2b96bd3b992";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-fWxe1JWWfICA+wuTH+wok+xvYHS9+rG9s51LqeMEDAE=";
    };
    date = "2024-05-04";
  };
  retroBlurSrc = {
    pname = "retroBlurSrc";
    version = "685cf3aea4ed1a4d82f687293f0efb5baa1aec06";
    src = fetchgit {
      url = "https://github.com/Motschen/Retroblur";
      rev = "685cf3aea4ed1a4d82f687293f0efb5baa1aec06";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-YAOmeSAxD0qR8Y7t+HOBoTCJtiJNfveJCmiptfg25OE=";
    };
    date = "2024-06-08";
  };
  spotifyCanvasSrc = {
    pname = "spotifyCanvasSrc";
    version = "d3fd4a3ef31726bc9b9f5192bc7f4e6bc2f98e6c";
    src = fetchgit {
      url = "https://github.com/itsmeow/Spicetify-Canvas";
      rev = "d3fd4a3ef31726bc9b9f5192bc7f4e6bc2f98e6c";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-QhhxZo2V+jhJfsEM+TFTzHb6A5ddnsyTJdDgtshSpk8=";
    };
    date = "2024-03-03";
  };
  spotifyNoPremiumSrc = {
    pname = "spotifyNoPremiumSrc";
    version = "6b145fb84e16cdaea8f06aef4d1cfc0d6f5898e5";
    src = fetchgit {
      url = "https://github.com/Daksh777/SpotifyNoPremium";
      rev = "6b145fb84e16cdaea8f06aef4d1cfc0d6f5898e5";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-pjIBh40SnUgyAKGwVRKod2ac8+uqGJ2WSTnOYc9UnGA=";
    };
    date = "2024-11-11";
  };
  spotifywmSrc = {
    pname = "spotifywmSrc";
    version = "8624f539549973c124ed18753881045968881745";
    src = fetchgit {
      url = "https://github.com/dasJ/spotifywm";
      rev = "8624f539549973c124ed18753881045968881745";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-AsXqcoqUXUFxTG+G+31lm45gjP6qGohEnUSUtKypew0=";
    };
    date = "2022-10-25";
  };
  startPageSrc = {
    pname = "startPageSrc";
    version = "75bd17ba1c9a19730f14529fb18857d7b9c7c12e";
    src = fetchgit {
      url = "https://github.com/Resxt/startup-page";
      rev = "75bd17ba1c9a19730f14529fb18857d7b9c7c12e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-+Th5o00c3Y8U+Y/RGmRSkWWp97YCoCJmoESFLZf9dwM=";
    };
    date = "2024-02-15";
  };
  tetraxSrc = {
    pname = "tetraxSrc";
    version = "a224969550b3831c4fb084bcc8c675f3a77735d1";
    src = fetchgit {
      url = "https://github.com/Tetrax-10/Spicetify-Extensions";
      rev = "a224969550b3831c4fb084bcc8c675f3a77735d1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [ ];
      sha256 = "sha256-XT0l6DVaXXaD7QihilpF3vQ+kry98sss3POR5gTRmhI=";
    };
    date = "2023-07-22";
  };
}
