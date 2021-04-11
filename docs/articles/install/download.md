<!--Hey there, I see you're interested in our website files, are you a web developer maybe? If you are, visit us over at our Discord, we're looking for web developers!-->
<!--Discord link: https://dahliaos.io/discord-->
<!doctype html>
<!---

Copyright 2019 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

-->
<link href="https://fonts.googleapis.com/css2?family=Sulphur+Point:wght@300;400&display=swap" rel="stylesheet">

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description"
    content="dahliaOS is a modern, secure, lightweight and responsive operating system, combining the best of GNU/Linux and Fuchsia OS.">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
  <meta name="keywords"
    content="dahlia, software, flutter, fuchsia, linux, dahliaOS, computer, operating system, os, system, kernel, dart, open source, material, design, zircon, go, rust">
  <title>Download | dahliaOS</title>
  <meta property="og:title" content="dahliaOS Downloads">
  <meta property="og:site_name" content="dahliaOS">
  <meta property="og:description" content="Download dahliaOS!">
  <meta property="og:image" content="https://imgur.com/PNGGkDP.png">
  <meta property="og:url" content="https://dahliaos.io/download">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <script src="assets/js/material.min.js"></script>
  <!-- Page styles -->
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="assets/css/dahlia.css?v=1.3">
  <link rel="stylesheet" href="assets/css/styles.css?v=1.3">
  <link rel="stylesheet" href="assets/css/custom.css?v=1.3">
  <style>
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 40px;
      z-index: 900;
    }
  </style>
</head>

<body>
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <%- include('./templates/nav.ejs'); %>
    <div class="dahliaOS-content mdl-layout__content">
      <a name="top"></a>
      <div align="center" id="downloads" class="dahliaOS-donate-section">
        <br><br><br>
        <div class="mdl-card__title-text sulphurpoint mdl-typography--display-2 mdl-typography--font-thin updateTitles">
          Downloads</div>
        <br><br>
        <div class="demo-card-wide mdl-card downloadCard mdl-shadow--2dp">
          <div class="mdl-card__title">
            <h2 class="mdl-card__title-text sulphurpoint mdl-typography--font-light">
              Latest</h2>
          </div>
          <h6 align="left" class="Roboto mdl-card__supporting-text mdl-card--expand details">Whats new:
          </h6>
          <div align="left" class="Roboto mdl-card__supporting-text mdl-card--expand latestVersionDetails">
            Download the latest
            build of
            <br> dahliaOS
          </div>
          <div align="right">
            <a id="latestLearnMore" href="https://github.com/dahliaOS/releases/releases/" target="_blank"
              class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
              Read more
            </a><br>
          </div>
          <div align="left" class="mdl-card__actions mdl-card--border">
            <a id="latestDownload" href="https://github.com/dahliaOS/releases/"
              class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
              Download
            </a>
            <a id="latestDownloadLegacy" href="https://github.com/dahliaOS/releases/"
              class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect notActive">
              Download (legacy)
            </a>
          </div>
          <div class="mdl-card__menu">
            <div class="mdl-tooltip" data-mdl-for="tt1" id="tooltipLatestVersion">
              Version: THE_LATEST_VERSION
            </div>
            <button id="tt1" class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
              <div class="icon material-icons">info</div>
            </button>
          </div>
        </div>
        <br><br><br>
        <h2 class="mdl-card__title-text sulphurpoint mdl-typography--display-2 mdl-typography--font-thin updateTitles">
          Older updates</h2>
        <br><br>
        <div id="loader" class="mdl-spinner mdl-spinner--single-color mdl-js-spinner is-active"></div>
        <div class="errors"></div>
        <ul class="legacyUpdates" id="legacyUpdates"></ul>
        <a class="mdl-typography--font-regular dahliaOS-alt-link" href="https://github.com/dahliaOS/releases/tags"
          target="_blank">
          Looking for an older update?&nbsp;<i class="material-icons">chevron_right</i>
        </a>
        <br><br><br><br>
        <div class="dahliaOS-download-section-image"></div>
      </div>
      <div class="container-that-takes-up-the-entire-page-so-i-can-add-the-back-drop">
        <dialog class="mdl-dialog">
          <h4 class="mdl-dialog__title">Support dahliaOS</h4>
          <div class="mdl-dialog__content">
            <p>
              Donating to dahliaOS will help us purchase devices for testing and cover web hosting fees, so we can
              continue work on
              our amazing software!
            </p>
          </div>
          <div class="mdl-dialog__actions">
            <button type="button" class="mdl-button continue">Donate</button>
            <button type="button" class="mdl-button close">No thanks</button>
          </div>
        </dialog>
      </div>
      <%- include('./templates/footer.ejs'); %>
    </div>
  </div>

  <script>
    fetch('https://api.github.com/repos/dahliaOS/releases/releases')
      .then(res => res.json())
      .then(data => {
        // Put data for the latest update in
        document.getElementById('tooltipLatestVersion').innerHTML = `Version: ${data[0].tag_name}`;
        document.getElementById('latestLearnMore').href = data[0].html_url;
        document.querySelector('.latestVersionDetails').innerHTML = data[0].body.substring(data[0].body.indexOf('+ ')).replace(/(?:\r\n|\r|\n)/g, '<br>'); // That long REGEX basically splits the line breaks and adds a br
        document.getElementById('latestDownload').href = data[0].zipball_url
        if (data[0].assets.length >= 2) {
          data[0].assets.forEach(build => {
            if (build.name.includes('-efi')) {
              document.getElementById('latestDownload').innerHTML = 'Download (efi)'
              document.getElementById('latestDownload').href = build.browser_download_url;
              document.getElementById('latestDownload').setAttribute('onclick', 'downloadClicked()');
            } else if (build.name.includes('-legacy')) {
              document.getElementById('latestDownloadLegacy').style.display = 'inline-block';
              document.getElementById('latestDownloadLegacy').href = build.browser_download_url;
              document.getElementById('latestDownloadLegacy').setAttribute('onclick', 'downloadClicked()');
            }
          })
        }
        // Doing a for loop here because the for each wouldnt work for a cap of 11, and start at 1, because 0 is the latest and already was displayed
        for (var i = 1; i <= 11; i++) {
          const ul = document.getElementById('legacyUpdates')
          const li = document.createElement('li');

          const patchNotes = data[i].body
          // Model template
          var updateInfo = `<details class="smallDetails">
                            <summary class="Roboto mdl-typography--font-thin">${data[i].tag_name}</summary>
                            <h6 align="left" class="Roboto mdl-card__supporting-text mdl-card--expand detailsOld">Whats new:</h6>
                            <div class="Roboto mdl-card__supporting-text mdl-card--expand versionDetails">${patchNotes.substring(patchNotes.indexOf('+ ')).replace(/(?:\r\n|\r|\n)/g, '<br>')}</div>
                            <div align="left" class="mdl-card__actions mdl-card--border">
                                <a href="${data[i].zipball_url} onclick="downloadClicked()"
                                    class="Roboto mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                                    Download
                                </a>
                                <a id="latestLearnMore" href="${data[i].html_url}" onclick="downloadClicked()" target="_blank"
                                    class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                                    Read more
                                </a>
                            </div>
                        </details>`
          // Check if update has efi and or legacy
          if (data[i].assets.length >= 2) {
            // checks if efi and or legacy is there
            if (data[i].assets[0].name.includes('-efi') && data[i].assets[1].name.includes('-legacy') || data[i].assets[1].name.includes('-efi') && data[i].assets[0].name.includes('-legacy')) {
              // Has EFI and Legacy
              var updateInfo = `<details>
                                    <summary class="Roboto mdl-typography--font-thin">${data[i].tag_name}</summary>
                                    <h6 align="left" class="Roboto mdl-card__supporting-text mdl-card--expand detailsOld">Whats new:</h6>
                                    <div class="Roboto mdl-card__supporting-text mdl-card--expand versionDetails">${patchNotes.substring(patchNotes.indexOf('+ ')).replace(/(?:\r\n|\r|\n)/g, '<br>')}</div>
                                    <div align="right">
                                        <a id="latestLearnMore" href="${data[i].html_url} onclick="downloadClicked()" target="_blank"
                                            class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect smallReadmore">
                                            Read more
                                        </a>
                                    </div>
                                    <div align="left" class="mdl-card__actions mdl-card--border">
                                        <a href="${data[i].assets[0].browser_download_url} onclick="downloadClicked()"
                                            class="Roboto mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect smallDownload">
                                            Download (EFI)
                                        </a>
                                        <a href="${data[i].assets[1].browser_download_url} onclick="downloadClicked()"
                                            class="Roboto mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect smallDownload">
                                            Download (Legacy)
                                        </a>
                                    </div>
                                </details>`
              li.innerHTML = updateInfo
              ul.appendChild(li);
            } else {
              li.innerHTML = updateInfo
              ul.appendChild(li);
            }
          } else {
            li.innerHTML = updateInfo
            ul.appendChild(li);
          }
        }
      })
      .then(document.getElementById('loader').style.display = 'none')
      .catch(err => {
        console.log(err);
        document.querySelector('.errors').innerHTML = '<h4 class="error">An error occured while fetching the downloads!</h4>'
      })

    const downloadClicked = () => {
      const dialog = document.querySelector('dialog');
      const backgroundElement = document.querySelector('.container-that-takes-up-the-entire-page-so-i-can-add-the-back-drop')
      dialog.showModal();
      backgroundElement.style.display = 'unset';
      dialog.querySelector('.close').addEventListener('click', () => {
        dialog.close();
        backgroundElement.style.display = 'none';
      });
      dialog.querySelector('.continue').addEventListener('click', () => location.href = '/donate');

      // Snack bar stuff that I was told to comment out because he wanted the modal instead of the snackbar :(
      /*       const notification = document.querySelector('.mdl-js-snackbar');
            const data = {
              message: 'Thanks for downloading! Consider donating to support the project!',
              actionHandler: event => {
                location.href = '/donate';
              },
              actionText: 'Donate',
              timeout: 10000
            };
            notification.MaterialSnackbar.showSnackbar(data); */
    }
  </script>
</body>

</html>
