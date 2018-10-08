package ${packageName}.model

import ${packageName}.${className}Main

class ${className}Model(private val mPresenter: ${className}Main.ModelToPresenter) : ${className}Main.PresenterToModel {

    /**
     * If you don't use Retrofit, initialise the list and replace "RetrofitCall" with the network call instance of your preference.
     */
//    private lateinit var callList: List<Call<RetrofitCall>>

    override fun loadData() {

    }

    override fun onDestroy() {
//        for (index in 0 until callList.size) {
//            callList[index]?.let {
//                if(callList[index].isCanceled()) callList[index].cancel()
//            }
//        }
    }
}