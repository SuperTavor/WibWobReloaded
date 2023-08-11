.class public Lcom/example/util/AdjustApplication;
.super Lcom/example/util/q;


# static fields
.field static final a:Ljava/lang/String;

.field private static c:Lcom/example/util/AdjustApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/AdjustApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/AdjustApplication;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/q;-><init>()V

    sput-object p0, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    return-void
.end method

.method public static a()Lcom/example/util/AdjustApplication;
    .locals 1

    sget-object v0, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v0, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    invoke-virtual {v0}, Lcom/example/util/AdjustApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/bc;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    invoke-virtual {v0}, Lcom/example/util/AdjustApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/example/util/bc;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/example/util/AdjustApplication;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust_app_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    invoke-virtual {v0}, Lcom/example/util/AdjustApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/example/util/bc;->e:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    invoke-virtual {v2}, Lcom/example/util/AdjustApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/example/util/bc;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    invoke-virtual {v3}, Lcom/example/util/AdjustApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/example/util/bc;->g:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    invoke-virtual {v4}, Lcom/example/util/AdjustApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/example/util/bc;->h:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    invoke-virtual {v5}, Lcom/example/util/AdjustApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/example/util/bc;->i:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    invoke-virtual {v6}, Lcom/example/util/AdjustApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/example/util/bc;->j:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/example/util/AdjustApplication;->a()Lcom/example/util/AdjustApplication;

    move-result-object v7

    const-string v8, "UserDefault"

    invoke-virtual {v7, v8, v9}, Lcom/example/util/AdjustApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "adjust_event_purchase"

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "adjust_event_purchaseBtnTouch"

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "adjust_event_readQRCode"

    invoke-interface {v7, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "adjust_event_shotMyPuni"

    invoke-interface {v7, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "adjust_event_yokaiExamine"

    invoke-interface {v7, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "adjust_event_others"

    invoke-interface {v7, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_0
    const-string v0, "com.adjust.sdk.AdjustConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v0, "sandbox"

    if-ne p1, v10, :cond_0

    const-string v0, "production"

    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.adjust.sdk.Adjust"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "onCreate"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    sget-object v0, Lcom/example/util/AdjustApplication;->c:Lcom/example/util/AdjustApplication;

    new-instance v1, Lcom/example/util/b;

    invoke-direct {v1, v11}, Lcom/example/util/b;-><init>(Lcom/example/util/a;)V

    invoke-virtual {v0, v1}, Lcom/example/util/AdjustApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/example/util/q;->onCreate()V

    sget-object v0, Lcom/example/util/AdjustApplication;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
