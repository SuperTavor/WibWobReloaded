.class final Lbolts/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lbolts/g;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbolts/g;

    invoke-direct {v0}, Lbolts/g;-><init>()V

    sput-object v0, Lbolts/g;->a:Lbolts/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lbolts/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbolts/g;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbolts/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbolts/i;-><init>(Lbolts/h;)V

    iput-object v0, p0, Lbolts/g;->c:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    invoke-static {}, Lbolts/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lbolts/g;->a:Lbolts/g;

    iget-object v0, v0, Lbolts/g;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static b()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lbolts/g;->a:Lbolts/g;

    iget-object v0, v0, Lbolts/g;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static c()Z
    .locals 2

    const-string v0, "java.runtime.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method
