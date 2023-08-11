.class public Lcom/toast/android/analytics/external/leaktest/LeakLib;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "leaktest"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLeakInfo()Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/external/leaktest/LeakLib;->leakTest()I

    invoke-static {}, Lcom/toast/android/analytics/external/leaktest/LeakLib;->leakCheck()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static native getMemoryContainer()Ljava/util/ArrayList;
.end method

.method public static native isMemoryLeak()Z
.end method

.method public static native leakCheck()Ljava/util/ArrayList;
.end method

.method public static native leakTest()I
.end method

.method public static memoryLeakTest()Ljava/util/ArrayList;
    .locals 8

    const v7, 0x186a0

    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/toast/android/analytics/external/leaktest/Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/toast/android/analytics/external/leaktest/Key;-><init>(Ljava/lang/Integer;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/toast/android/analytics/external/leaktest/LeakLib;->leakCheck()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static native setStartTime(I)V
.end method
