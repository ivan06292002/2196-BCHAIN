import React from "react";


function Color() {
return (
<div className="flex flex-col justify-center items-center">
    <div>
        <h1>The Bible Quiz</h1>
    </div>
<div>
<h1>The Bible Consist of the Old and New Testaments</h1>
<span className="text-green-500">CORRECT!</span>
</div>
<div>
<h1>Moses led the Israelites out of Egypt.</h1>
<span className="text-green-500">CORRECT!</span>
</div>
<div>
<h1>The Sermon on the Mount is found in the Book of Luke</h1>
<span className="text-red-500">INCORRECT!</span>
</div>

</div>
)

;

}

function ColorOrNot(props) {
const isRainy = props.isRainy;
if (isRainy) {
return <Color />;
}
return (
<div>
<h1>The Bible Quiz</h1>
<h1>The Bible Consist of the Old and New Testaments</h1>
<h1>Moses led the Israelites out of Egypt.</h1>
<h1>The Sermon on the Mount is found in the Book of Luke</h1>
</div>
);
}

export default function App() {
return (
<div>

<ColorOrNot isRainy={false} />


</div>
);
}
