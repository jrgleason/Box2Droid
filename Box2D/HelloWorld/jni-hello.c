#include <jni.h>
#include <stdio.h>
#ifdef __cplusplus
extern "C" {
#endif
int main(int argc, char** argv);
#ifdef __cplusplus
}
#endif
#include "android.h"
static JavaVM *g_VM;
const int getArrayLen(JNIEnv *env, jobjectArray jarray)
{
        return (*env)->GetArrayLength(env, jarray);
}
JNIEXPORT void JNICALL Java_com_gleason_box2d_Native_main(JNIEnv* env, jclass class, jobjectArray jargv)
{
       LOGD("hello, world");
       (*env)->GetJavaVM(env, &g_VM);
       jsize clen = getArrayLen(env, jargv);
       char * args[(int)clen];
       main (clen, args);
}

