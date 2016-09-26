cat lib/ansible/release.py | sed "s/UNKNOWN/$BUILD_NUMBER/g" > tmp.py && mv tmp.py lib/ansible/release.py
git submodule update --init --recursive
python setup.py sdist

name=$(python setup.py --name)
version=$(python setup.py --version)

curl -v --retry 3 -f -F package=@dist/$name-$version.tar.gz https://sox2jcPa5HXMH2Yyfqzk@push.fury.io/censio/
