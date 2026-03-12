template <typename T>
struct stor_t {
	stor_t(const T& t): ptr(t) {
		ptr[99] = 1;
	}
 
	stor_t() {
		ptr[99] = 0;
	}

	T& ret_t() {
		return *reinterpret_cast<T*>(ptr);
	}

	bool has_value() {
		return ptr[99];
	}
 private:
	 char ptr [100];
};
