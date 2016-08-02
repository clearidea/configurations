
# PHP Coding Standards

## Indenting

All indents should be performed with the tab key.

## Editor Settings

All projects should include an .editorconfig file. This will cause a compliant editor
such as phpstorm or eclipse to set its configuration correctly.
Here are the sample php settings:

    [*.php]
    indent_style    = tab
    indent_size     = 3

This means that indents are perforbed with the tab key, not spaces. The tab character is used, 
and each tab consists of 3 spaces.

## Functions and Control Structures

Clear Idea predominantly uses the Allman indent style.
[Read about Allman here](https://en.wikipedia.org/wiki/Indent_style#Allman_style)

This means both functions and control structures put the starting brace on a new line.

### Example

    function GetData()
    {
        if( GetError() )
        {
            HandleError();
        }
    }


## Naming Conventions

All elements use camel case, meaning each word begins with a capital letter.
[Read about CamelCase here](https://en.wikipedia.org/wiki/CamelCase)

### Variables
We use a simplified single letter Hungarian Notation to indicate the variable type
when naming it.
** This does not apply to functions or methods.
  
The basic types are:
* string (s)
* int (i)
* float (f)
* bool (b)

### Example

    function GetData()
    {
        $bResultCode    = true;
        $sMessage       = '';
        $fDistance      = 0.0;
        $iCount         = 0;
        
        if( !GetData() )
        {
            $bResultCode = false;
        }
        
        return $bResultCode;
    }

## Use of Spaces

Put spaces between all tokens in statements.

### Wrong

    if($aResults['ResultCode']==0 && ServiceResult($iCall))

### Right

    if( $aResults[ 'ResultCode' ] == 0 && ServiceResult( $iCall ) )

## Comments

Classes, methods and functions should all be documented using the phpdoc format.

[Read about phpdoc here](http://www.phpdoc.org/docs/latest/index.html)

    /**
     * @param CIApplication $Cortex
     * @return array
     * @throws Exception
     */
    
    function Go2_Service_AccountAdd( CIApplication $Cortex )

## Alignment

When a list of similar items exist within the source code, i.e. variable or array initialization,
all possible items sould be aligned visually.

e.g.

### Wrong

        $bResultCode = true;
        $sMessage = '';
        $fDistance = 0.0;
        $iCount = 0;

### Right

        $bResultCode    = true;
        $sMessage       = '';
        $fDistance      = 0.0;
        $iCount         = 0;

