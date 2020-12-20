;;; einkless-theme.el --- A colorless port of eink-theme

;; Copyright (C) 2019–2020 Thomas Letan
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <https://www.gnu.org/licenses/>.

;; Author: Thomas Letan <contact@thomasletan.fr>
;; URL: https://git.sr.ht/~lthms/colorless-themes.el
;; Version: 0.2
;; Package-Requires: ((colorless-themes "0.2"))
;; License: GPL-3
;; Keywords: faces theme

;;; Commentary:
;; This is a port of eink using the macro provided bycolorless-themes.
;;
;; See https://github.com/maio/eink-emacs for the original theme

;;; Code:

;; -*- lexical-binding: t -*-

(require 'colorless-themes)

(deftheme einkless "A colorless port of eink-theme")

(colorless-themes-make einkless
                       "#fefef0"    ; bg
                       "#f2f2e4"    ; bg+
                       "#eeeee0"    ; current-line
                       "#ccccc0"    ; fade
                       "#666660"    ; fg
                       "#999990"    ; fg+
                       "#000008"    ; primary
                       "#ed6666"    ; red
                       "#FFBF00"    ; orange
                       "#fff1aa"    ; yellow
                       "#87c484")   ; green

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'einkless)
(provide 'einkless-theme)
;;; einkless-theme.el ends here
