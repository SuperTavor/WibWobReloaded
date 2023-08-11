.class public Lcom/example/util/q;
.super Landroid/app/Application;


# static fields
.field private static a:Lcom/example/util/q;

.field static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/q;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lcom/example/util/q;->a:Lcom/example/util/q;

    return-void
.end method

.method public static b()Lcom/example/util/q;
    .locals 1

    sget-object v0, Lcom/example/util/q;->a:Lcom/example/util/q;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Lcom/example/util/q;->b:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
