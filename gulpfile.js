var gulp        = require('gulp');
var sass        = require('gulp-sass');
var rename      = require('gulp-rename');

gulp.task('sass', function () {
    return gulp.src(['./**/sass/*.scss', '!./node_modules/**/*', '!./m4/**/*'])
        .pipe(sass({
            outputStyle: 'nested',
            precision: 5,
            onError: function (err) {
                notify().write(err);
            }
        }))
        .pipe(rename(function (path) {
            path.dirname += '/../';
        }))
        .pipe(gulp.dest('./'))
});

gulp.task('default', ['sass']);
