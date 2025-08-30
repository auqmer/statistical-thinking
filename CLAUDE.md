# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Quarto website project for "Statistical Thinking" - an educational resource for research design and analysis in social and behavioral sciences. The site provides resources that build upon basic statistics understanding and covers advanced quantitative methods.

## Development Commands

### Building and Publishing
- `quarto render` - Build the website to the `docs/` directory
- `quarto preview` - Start a local development server with live reload
- `quarto publish gh-pages` - Publish to GitHub Pages (if configured)

### Content Development
- All content files are `.qmd` (Quarto markdown) files in the root directory
- The site structure is defined in `_quarto.yml`
- Generated HTML files are output to the `docs/` directory

## Architecture

### Site Structure
- **Website Type**: Quarto website with floating sidebar navigation
- **Output Directory**: `docs/` (configured for GitHub Pages)
- **Theme**: Darkly Bootstrap theme with custom SCSS (`custom.scss`) and CSS (`styles.css`)
- **Navigation**: Organized into sections: Statistical Software, Getting Started, Experimental, Non-Experimental, Advanced Methods, and Modern Missing Data Methods

### Content Organization
The sidebar navigation in `_quarto.yml` defines the logical flow of content:
- Software tools and R tutorials come first
- Core statistical concepts follow
- Advanced methods build on foundational knowledge
- Missing data methods represent specialized applications

### Key Files
- `_quarto.yml` - Main configuration file defining site structure, navigation, and styling
- `index.qmd` - Homepage with site overview and contact information
- Individual `.qmd` files for each topic/section
- `references.bib` - Bibliography file for academic citations
- `images/` - Contains site logos and graphics
- `docs/` - Generated website files (do not edit directly)

### R Integration
- This is an R-based project (`.Rproj` file present)
- Code chunks in `.qmd` files execute R code for data analysis and visualization
- Uses libraries like `knitr`, `psych`, `DiagrammeR` for content generation

## Content Guidelines

- The site focuses on post-positivist philosophy of science and modeling approaches
- Academic tone with proper citations using the bibliography
- R code examples should be well-documented with appropriate chunk options
- Images and graphics should be placed in the `images/` directory

## File Editing Notes

- When editing `.qmd` files, preserve YAML front matter and existing code chunk options
- Bibliography citations use the format `@AuthorYearTitle`
- The site uses 2-space indentation (configured in `.Rproj`)
- Content should maintain the educational flow defined in the sidebar navigation