.class public final Landroid/support/v4/app/cv;
.super Landroid/support/v4/app/dd;


# static fields
.field public static final a:Landroid/support/v4/app/de;

.field private static final g:Landroid/support/v4/app/cx;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/CharSequence;

.field private final d:[Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/cy;

    invoke-direct {v0}, Landroid/support/v4/app/cy;-><init>()V

    sput-object v0, Landroid/support/v4/app/cv;->g:Landroid/support/v4/app/cx;

    :goto_0
    new-instance v0, Landroid/support/v4/app/cw;

    invoke-direct {v0}, Landroid/support/v4/app/cw;-><init>()V

    sput-object v0, Landroid/support/v4/app/cv;->a:Landroid/support/v4/app/de;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/da;

    invoke-direct {v0}, Landroid/support/v4/app/da;-><init>()V

    sput-object v0, Landroid/support/v4/app/cv;->g:Landroid/support/v4/app/cx;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/app/cz;

    invoke-direct {v0}, Landroid/support/v4/app/cz;-><init>()V

    sput-object v0, Landroid/support/v4/app/cv;->g:Landroid/support/v4/app/cx;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/cv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/cv;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/cv;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/cv;->e:Z

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/cv;->f:Landroid/os/Bundle;

    return-object v0
.end method
